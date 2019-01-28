.class public Lc8/txf;
.super Ljava/lang/Object;
.source "PhenixEvent.java"


# instance fields
.field protected ticket:Lc8/nxf;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/nxf;)V
    .locals 0
    .param p1, "t"    # Lc8/nxf;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lc8/txf;->ticket:Lc8/nxf;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/nxf;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "t"    # Lc8/nxf;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/txf;->url:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lc8/txf;->ticket:Lc8/nxf;

    .line 20
    return-void
.end method


# virtual methods
.method public getTicket()Lc8/nxf;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/txf;->ticket:Lc8/nxf;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/txf;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Lc8/nxf;)V
    .locals 0
    .param p1, "ticket"    # Lc8/nxf;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/txf;->ticket:Lc8/nxf;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/txf;->url:Ljava/lang/String;

    .line 36
    return-void
.end method
