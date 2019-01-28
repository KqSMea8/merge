.class public Lcom/youku/phone/home/SharedData;
.super Ljava/lang/Object;
.source "SharedData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static instance:Lcom/youku/phone/home/SharedData;


# instance fields
.field private abTestValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/youku/phone/home/SharedData;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/youku/phone/home/SharedData;->instance:Lcom/youku/phone/home/SharedData;

    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/youku/phone/home/SharedData;

    monitor-enter v1

    .line 25
    :try_start_0
    new-instance v0, Lcom/youku/phone/home/SharedData;

    invoke-direct {v0}, Lcom/youku/phone/home/SharedData;-><init>()V

    sput-object v0, Lcom/youku/phone/home/SharedData;->instance:Lcom/youku/phone/home/SharedData;

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    sget-object v0, Lcom/youku/phone/home/SharedData;->instance:Lcom/youku/phone/home/SharedData;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAbTestValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/phone/home/SharedData;->abTestValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAbTestValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "abTestValue"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/youku/phone/home/SharedData;->abTestValue:Ljava/lang/String;

    .line 16
    return-void
.end method
