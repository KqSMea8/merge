.class public Lc8/QDb;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PDb;
    }
.end annotation


# static fields
.field private static callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/PDb;",
            ">;"
        }
    .end annotation
.end field

.field private static init:Z

.field private static mFuture:Ljava/util/concurrent/ScheduledFuture;


# instance fields
.field private application:Landroid/app/Application;

.field private isAppOnForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lc8/QDb;->init:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/QDb;->callbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/QDb;->application:Landroid/app/Application;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/QDb;->isAppOnForeground:Z

    .line 44
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 28
    sget-boolean v1, Lc8/QDb;->init:Z

    if-nez v1, :cond_0

    .line 29
    const-string/jumbo v1, "init BackgroundTrigger"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lc8/QDb;

    invoke-direct {v0, p0}, Lc8/QDb;-><init>(Landroid/app/Application;)V

    .line 32
    .local v0, "trigger":Lc8/QDb;
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    sget-object v2, Lc8/QDb;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v0, v4, v5}, Lc8/eCb;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lc8/QDb;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lc8/QDb;->init:Z

    .line 35
    .end local v0    # "trigger":Lc8/QDb;
    :cond_0
    return-void
.end method

.method public static registerCallback(Lc8/PDb;)V
    .locals 1
    .param p0, "callback"    # Lc8/PDb;

    .prologue
    .line 38
    sget-object v0, Lc8/QDb;->callbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 48
    invoke-static {}, Lc8/NBb;->d()V

    .line 49
    iget-object v6, p0, Lc8/QDb;->application:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lc8/uBb;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v4

    .line 50
    .local v4, "isAppOnForeground":Z
    iget-boolean v6, p0, Lc8/QDb;->isAppOnForeground:Z

    if-eq v6, v4, :cond_4

    .line 51
    iput-boolean v4, p0, Lc8/QDb;->isAppOnForeground:Z

    .line 52
    if-eqz v4, :cond_0

    .line 53
    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/AEb;->updateSamplingSeed()V

    .line 54
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 55
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getForegroundStatisticsInterval()I

    move-result v6

    invoke-static {v1, v6}, Lc8/ODb;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 59
    .restart local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getBackgroundStatisticsInterval()I

    move-result v6

    invoke-static {v1, v6}, Lc8/ODb;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_1
    invoke-static {}, Lc8/ODb;->triggerUpload()V

    .line 63
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v6, Lc8/QDb;->callbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    sget-object v6, Lc8/QDb;->callbacks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/PDb;

    invoke-interface {v6}, Lc8/PDb;->onForeground()V

    .line 63
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    :cond_3
    sget-object v6, Lc8/QDb;->callbacks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/PDb;

    invoke-interface {v6}, Lc8/PDb;->onBackground()V

    goto :goto_3

    .line 71
    .end local v0    # "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    return-void
.end method
