.class public Lc8/MTe;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostName:Ljava/lang/String;

.field private listener:Lc8/OTe;

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private pushObserver:Lc8/pUe;

.field private sink:Lc8/ZVp;

.field private socket:Ljava/net/Socket;

.field private source:Lc8/aWp;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    sget-object v0, Lc8/OTe;->REFUSE_INCOMING_STREAMS:Lc8/OTe;

    iput-object v0, p0, Lc8/MTe;->listener:Lc8/OTe;

    .line 541
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lc8/MTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 542
    sget-object v0, Lc8/pUe;->CANCEL:Lc8/pUe;

    iput-object v0, p0, Lc8/MTe;->pushObserver:Lc8/pUe;

    .line 550
    iput-boolean p1, p0, Lc8/MTe;->client:Z

    .line 551
    return-void
.end method

.method static synthetic access$000(Lc8/MTe;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$100(Lc8/MTe;)Lc8/pUe;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->pushObserver:Lc8/pUe;

    return-object v0
.end method

.method static synthetic access$200(Lc8/MTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-boolean v0, p0, Lc8/MTe;->client:Z

    return v0
.end method

.method static synthetic access$300(Lc8/MTe;)Lc8/OTe;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->listener:Lc8/OTe;

    return-object v0
.end method

.method static synthetic access$400(Lc8/MTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/MTe;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$600(Lc8/MTe;)Lc8/ZVp;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->sink:Lc8/ZVp;

    return-object v0
.end method

.method static synthetic access$700(Lc8/MTe;)Lc8/aWp;
    .locals 1
    .param p0, "x0"    # Lc8/MTe;

    .prologue
    .line 535
    iget-object v0, p0, Lc8/MTe;->source:Lc8/aWp;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/TTe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lc8/TTe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/TTe;-><init>(Lc8/MTe;Lc8/FTe;)V

    return-object v0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lc8/MTe;
    .locals 0
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    .line 573
    iput-object p1, p0, Lc8/MTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 574
    return-object p0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lc8/aWp;Lc8/ZVp;)Lc8/MTe;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "source"    # Lc8/aWp;
    .param p4, "sink"    # Lc8/ZVp;

    .prologue
    .line 560
    iput-object p1, p0, Lc8/MTe;->socket:Ljava/net/Socket;

    .line 561
    iput-object p2, p0, Lc8/MTe;->hostName:Ljava/lang/String;

    .line 562
    iput-object p3, p0, Lc8/MTe;->source:Lc8/aWp;

    .line 563
    iput-object p4, p0, Lc8/MTe;->sink:Lc8/ZVp;

    .line 564
    return-object p0
.end method
