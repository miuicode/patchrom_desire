.class Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$DriverLoadingState;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2008
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2010
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    .line 2019
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20003

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2034
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2035
    return-void

    .line 2012
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x2

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 2015
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xc

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 2023
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Failed to load driver!"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    .line 2032
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 2026
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 2029
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 2010
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 2024
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method
