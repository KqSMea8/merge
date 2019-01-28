.class public final Lc8/kFd;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/nFd;


# direct methods
.method public constructor <init>(Lc8/nFd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/jUc;

    invoke-static {v1, v0}, Lc8/nFd;->a(Lc8/nFd;Lc8/jUc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManage$MHandlerr"

    const-string/jumbo v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/jUc;

    invoke-static {v1, v0}, Lc8/nFd;->b(Lc8/nFd;Lc8/jUc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->c(Lc8/nFd;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->d(Lc8/nFd;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    :try_start_4
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-virtual {v0}, Lc8/nFd;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_5
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->i:Lc8/EFd;

    invoke-virtual {v0}, Lc8/EFd;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage ACTION_SAVE_LAST_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    :try_start_6
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->c:Lc8/DFd;

    iget-object v1, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v1, v1, Lc8/nFd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, v0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, v0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    invoke-virtual {v0}, Lc8/DFd;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    :try_start_7
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->c:Lc8/DFd;

    invoke-virtual {v0}, Lc8/DFd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->e(Lc8/nFd;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_LBS_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_8
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->f(Lc8/nFd;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->c:Lc8/DFd;

    invoke-virtual {v0}, Lc8/DFd;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage STOP_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    :try_start_a
    iget-object v1, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v1, Lc8/nFd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->g(Lc8/nFd;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage SET_OPTION"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    :try_start_b
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->h(Lc8/nFd;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    :try_start_c
    iget-object v0, p0, Lc8/kFd;->a:Lc8/nFd;

    invoke-static {v0}, Lc8/nFd;->i(Lc8/nFd;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
