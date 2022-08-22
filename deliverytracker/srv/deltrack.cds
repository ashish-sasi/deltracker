using dt as mydt from '../db/delmodel';

service deliverytracker {

entity deliveryStatus as projection on mydt.DeliveryStatus;

action uploadData();
}