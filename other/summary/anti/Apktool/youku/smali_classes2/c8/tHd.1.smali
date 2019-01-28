.class public Lc8/tHd;
.super Ljava/lang/Object;
.source "PlatformMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uHd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private pushTimesTamp:Ljava/lang/String;

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/tHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tHd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/tHd;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/tHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tHd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/tHd;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/tHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tHd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/tHd;->pushTimesTamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/tHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tHd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/tHd;->deviceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/uHd;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lc8/uHd;

    invoke-direct {v0, p0}, Lc8/uHd;-><init>(Lc8/tHd;)V

    return-object v0
.end method

.method public deviceId(Ljava/lang/String;)Lc8/tHd;
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/tHd;->deviceId:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public pushTimesTamp(Ljava/lang/String;)Lc8/tHd;
    .locals 0
    .param p1, "pushTimesTamp"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/tHd;->pushTimesTamp:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public seqId(Ljava/lang/String;)Lc8/tHd;
    .locals 0
    .param p1, "seqId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/tHd;->seqId:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public taskId(Ljava/lang/String;)Lc8/tHd;
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/tHd;->taskId:Ljava/lang/String;

    .line 33
    return-object p0
.end method
