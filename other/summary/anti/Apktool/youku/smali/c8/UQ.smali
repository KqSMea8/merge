.class public Lc8/UQ;
.super Ljava/lang/Object;
.source "SendEvent.java"


# instance fields
.field public muds:Ljava/lang/String;

.field public segmentation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lc8/UQ;->url:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lc8/UQ;->muds:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lc8/UQ;->segmentation:Ljava/util/Map;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/UQ;->timestamp:J

    .line 11
    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lc8/UQ;->timestamp:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lc8/UQ;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lc8/UQ;->timestamp:J

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lc8/UQ;->url:Ljava/lang/String;

    .line 24
    return-void
.end method
