.class public abstract Lc8/dLd;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eLd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/dLd",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eventId:Ljava/lang/String;

.field private selfDescribingJsonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/QKd;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lc8/dLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/Event$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/dLd;->selfDescribingJsonList:Ljava/util/List;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/dLd;->timestamp:J

    .line 46
    invoke-static {}, Lc8/ALd;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/dLd;->eventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lc8/dLd;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/dLd;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/dLd;->selfDescribingJsonList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/dLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/dLd;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/dLd;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/dLd;)J
    .locals 2
    .param p0, "x0"    # Lc8/dLd;

    .prologue
    .line 42
    iget-wide v0, p0, Lc8/dLd;->timestamp:J

    return-wide v0
.end method


# virtual methods
.method protected abstract self()Lc8/dLd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public timestamp(J)Lc8/dLd;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/dLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/Event$Builder<TT;>;"
    iput-wide p1, p0, Lc8/dLd;->timestamp:J

    .line 70
    invoke-virtual {p0}, Lc8/dLd;->self()Lc8/dLd;

    move-result-object v0

    return-object v0
.end method
