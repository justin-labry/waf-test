//
// Created by Labry on 2020/04/15.
//
#include <iostream>           // std::cout
#include <thread>             // std::thread
#include <mutex>              // std::mutex, std::unique_lock
#include <condition_variable> // std::condition_variable
#include <deque>
#include <chrono>

using namespace std;

deque<int> queue;
mutex mu;
condition_variable cond;

static bool finished = false;

//Producer
void producer_func() {
    int count = 20;
    for(; count > 0; count--) {

        unique_lock<mutex> locker(mu);

        queue.push_front(count); //queue <- 10 ,9 8 ... 3 .. 2..1  every 1 second
        locker.unlock();
        cond.notify_all(); //notify one wating thread, if there is one.
        this_thread::sleep_for(chrono::milliseconds(100));
    }
}


//Consumer
void consumer_func(int id) {
    int data = 0;
    int count = 0;

    while (true) {
        unique_lock<mutex> locker(mu);
        cond.wait(locker, [](){ return !queue.empty();});
        data = queue.back();
        queue.pop_back();
        count++;
        locker.unlock();
        cout<< "consumer got a value from tread"<<id << ": "<< data << endl;
        if(count >= 10) {
            break;
        }
    }
}

void idle() {

    while(true) {
        this_thread::sleep_for(chrono::milliseconds(600));
        if(finished == true) {
            break;
        }
        cout<<"idle..."<<endl;
        unique_lock<mutex> locker(mu);
        cond.wait_for(locker/*, [](){return !finished;}*/,std::chrono::seconds(1));

        locker.unlock();

    }
    cout<<"idle ends."<<endl;

}

int main()
{
    thread t_producer= thread(&producer_func);
    thread t_consumer1 =  thread(&consumer_func,1);
    thread t_consumer2 = thread(&consumer_func,2);
    thread t_idle(idle);


    t_producer.join();
    t_consumer1.join();
    t_consumer2.join();
    finished = true;
    cond.notify_all();
    cout<< "------------------------------------" <<endl;
    t_idle.join();
    return 0;
}
