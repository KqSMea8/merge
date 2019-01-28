.class public Lc8/hUi;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lc8/jUc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnceLocationListenerWrapper"
.end annotation


# instance fields
.field private hasRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isStartLocation:Z

.field private locationOverTimeTimestamp:J

.field private locationRequestTimestamp:J

.field private mListener:Lc8/eUi;

.field private mLocationClientOnce:Lc8/hUc;

.field final synthetic this$0:Lc8/iUi;


# direct methods
.method public constructor <init>(Lc8/iUi;Lc8/eUi;J)V
    .locals 3
    .param p2, "listener"    # Lc8/eUi;
    .param p3, "overtime"    # J

    .prologue
    .line 471
    iput-object p1, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/hUi;->hasRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    .line 472
    iput-object p2, p0, Lc8/hUi;->mListener:Lc8/eUi;

    .line 473
    iput-wide p3, p0, Lc8/hUi;->locationOverTimeTimestamp:J

    .line 474
    return-void
.end method

.method static synthetic access$200(Lc8/hUi;)J
    .locals 2
    .param p0, "x0"    # Lc8/hUi;

    .prologue
    .line 462
    iget-wide v0, p0, Lc8/hUi;->locationRequestTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lc8/hUi;J)J
    .locals 1
    .param p0, "x0"    # Lc8/hUi;
    .param p1, "x1"    # J

    .prologue
    .line 462
    iput-wide p1, p0, Lc8/hUi;->locationRequestTimestamp:J

    return-wide p1
.end method

.method static synthetic access$400(Lc8/hUi;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hUi;

    .prologue
    .line 462
    iget-boolean v0, p0, Lc8/hUi;->isStartLocation:Z

    return v0
.end method

.method static synthetic access$500(Lc8/hUi;)Lc8/eUi;
    .locals 1
    .param p0, "x0"    # Lc8/hUi;

    .prologue
    .line 462
    iget-object v0, p0, Lc8/hUi;->mListener:Lc8/eUi;

    return-object v0
.end method

.method static synthetic access$800(Lc8/hUi;)J
    .locals 2
    .param p0, "x0"    # Lc8/hUi;

    .prologue
    .line 462
    iget-wide v0, p0, Lc8/hUi;->locationOverTimeTimestamp:J

    return-wide v0
.end method

.method private notifyAllWrapperLoaction(ZLcom/youku/lbs/LBSLocation;I)V
    .locals 7
    .param p1, "isSuccess"    # Z
    .param p2, "newLocation"    # Lcom/youku/lbs/LBSLocation;
    .param p3, "errorCode"    # I

    .prologue
    .line 538
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "3.notifyAllWrapperLoaction isSuccess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :try_start_0
    iget-object v3, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v3}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/youku/lbs/LBSLocationListener;Lcom/youku/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/hUi;

    .line 544
    .local v2, "onceWrapper":Lc8/hUi;
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v2, Lc8/hUi;->isStartLocation:Z

    if-nez v4, :cond_0

    :cond_1
    iget-object v4, v2, Lc8/hUi;->mListener:Lc8/eUi;

    if-eqz v4, :cond_0

    .line 545
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 546
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3.notifyAllWrapperLoaction is myself"

    invoke-static {v4, v5}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_1
    if-eqz p1, :cond_4

    .line 552
    iget-object v4, v2, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v4, p2}, Lc8/eUi;->onLocationUpdate(Lcom/youku/lbs/LBSLocation;)V

    .line 556
    :goto_2
    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lc8/hUi;->setHasRemoved(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/youku/lbs/LBSLocationListener;Lcom/youku/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;>;"
    .end local v2    # "onceWrapper":Lc8/hUi;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "3.notifyAllWrapperLoaction  error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 548
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/youku/lbs/LBSLocationListener;Lcom/youku/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;>;"
    .restart local v2    # "onceWrapper":Lc8/hUi;
    :cond_3
    :try_start_1
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "3.notifyAllWrapperLoaction is others: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    :cond_4
    iget-object v4, v2, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v4, p3}, Lc8/eUi;->onLocationFailed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setHasRemoved(Z)V
    .locals 4
    .param p1, "hasRemoved"    # Z

    .prologue
    .line 478
    :try_start_0
    invoke-virtual {p0}, Lc8/hUi;->onDestroy()V

    .line 479
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.LocationManagerProxy.destroy once"

    invoke-static {v1, v2}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v1}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Lc8/hUi;->hasRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "3.setHasRemoved(boolean hasRemoved) hasRemoved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v1}, Lc8/iUi;->access$900(Lc8/iUi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "3.setHasRemoved error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/hUi;->isStartLocation:Z

    .line 521
    iget-object v1, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v1, p0}, Lc8/hUc;->unRegisterLocationListener(Lc8/jUc;)V

    .line 524
    iget-object v1, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v1}, Lc8/hUc;->onDestroy()V

    .line 525
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 7
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 567
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5.onLocationChanged(AMapLocation aMapLocation)"

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v2, p0, Lc8/hUi;->hasRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6.onLocationChanged(AMapLocation aMapLocation) hasRemoved()=true"

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 574
    :cond_0
    if-nez p1, :cond_1

    .line 575
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6.amapLocation == null"

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/4 v2, -0x1

    invoke-direct {p0, v5, v6, v2}, Lc8/hUi;->notifyAllWrapperLoaction(ZLcom/youku/lbs/LBSLocation;I)V

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 580
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2, p1}, Lc8/iUi;->access$1000(Lc8/iUi;Lcom/amap/api/location/AMapLocation;)Lcom/youku/lbs/LBSLocation;

    move-result-object v1

    .line 581
    .local v1, "newLocation":Lcom/youku/lbs/LBSLocation;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "6.onLocationChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "//mListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :try_start_0
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v5}, Lc8/hUi;->notifyAllWrapperLoaction(ZLcom/youku/lbs/LBSLocation;I)V

    .line 588
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2, v1}, Lc8/iUi;->access$1100(Lc8/iUi;Lcom/youku/lbs/LBSLocation;)V

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "newLocation":Lcom/youku/lbs/LBSLocation;
    :cond_2
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "6.onLocationChanged:ErrorCode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2}, Lc8/iUi;->access$1200(Lc8/iUi;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 592
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2, v5}, Lc8/iUi;->access$1202(Lc8/iUi;Z)Z

    .line 593
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "7.SDKonLocation Error Start AmapAPP Location "

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 596
    :cond_3
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "7.SDKonLocation Error"

    invoke-static {v2, v3}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v2, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v2}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/hUi;->mListener:Lc8/eUi;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v2, "6"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 599
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "9.errorcode = 6 | ErrorDetail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v5, v6, v2}, Lc8/hUi;->notifyAllWrapperLoaction(ZLcom/youku/lbs/LBSLocation;I)V

    goto/16 :goto_0
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/hUi;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    .line 534
    return-void
.end method

.method public startLocation(Z)V
    .locals 6
    .param p1, "isNeedAddress"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    iput-boolean v5, p0, Lc8/hUi;->isStartLocation:Z

    .line 494
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    if-nez v2, :cond_0

    .line 495
    new-instance v2, Lc8/hUc;

    iget-object v3, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v3}, Lc8/iUi;->access$000(Lc8/iUi;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/hUc;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    .line 496
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v2, p0}, Lc8/hUc;->setLocationListener(Lc8/jUc;)V

    .line 497
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 498
    .local v1, "mLocationOptionOnce":Lcom/amap/api/location/AMapLocationClientOption;
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 499
    invoke-virtual {v1, p1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 500
    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 501
    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiActiveScan(Z)V

    .line 503
    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setMockEnable(Z)V

    .line 504
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    .line 505
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v2, v1}, Lc8/hUc;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 515
    .end local v1    # "mLocationOptionOnce":Lcom/amap/api/location/AMapLocationClientOption;
    :goto_0
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "4.doRequestLocationUpdates set overtime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lc8/hUi;->locationOverTimeTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " listener count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/hUi;->this$0:Lc8/iUi;

    invoke-static {v4}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v2}, Lc8/hUc;->startLocation()V

    .line 517
    return-void

    .line 508
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v2, p0}, Lc8/hUc;->unRegisterLocationListener(Lc8/jUc;)V

    .line 509
    iget-object v2, p0, Lc8/hUi;->mLocationClientOnce:Lc8/hUc;

    invoke-virtual {v2}, Lc8/hUc;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "4.doRequestLocationUpdates startLocation error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
