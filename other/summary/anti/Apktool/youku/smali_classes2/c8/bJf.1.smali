.class public Lc8/bJf;
.super Ljava/lang/Object;
.source "MonitorThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/cJf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lc8/cJf;

    sget-object v1, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/cJf;-><init>(Ljava/lang/String;Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;)V

    sput-object v0, Lc8/bJf;->instance:Lc8/cJf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/cJf;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lc8/bJf;->instance:Lc8/cJf;

    return-object v0
.end method
