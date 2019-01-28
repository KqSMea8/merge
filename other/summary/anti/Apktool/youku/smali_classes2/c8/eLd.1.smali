.class public Lc8/eLd;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dLd;
    }
.end annotation


# instance fields
.field protected final eventId:Ljava/lang/String;

.field protected final selfDescribingJsonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/QKd;",
            ">;"
        }
    .end annotation
.end field

.field protected final timestamp:J


# direct methods
.method protected constructor <init>(Lc8/dLd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/dLd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "builder":Lc8/dLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/Event$Builder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lc8/dLd;->access$100(Lc8/dLd;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/zLd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Lc8/dLd;->access$200(Lc8/dLd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/zLd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Lc8/dLd;->access$200(Lc8/dLd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "eventId cannot be empty"

    invoke-static {v0, v1}, Lc8/zLd;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    invoke-static {p1}, Lc8/dLd;->access$100(Lc8/dLd;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/eLd;->selfDescribingJsonList:Ljava/util/List;

    .line 108
    invoke-static {p1}, Lc8/dLd;->access$300(Lc8/dLd;)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/eLd;->timestamp:J

    .line 109
    invoke-static {p1}, Lc8/dLd;->access$200(Lc8/dLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eLd;->eventId:Ljava/lang/String;

    .line 110
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc8/eLd;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfDescribingJson()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/QKd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/eLd;->selfDescribingJsonList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lc8/eLd;->timestamp:J

    return-wide v0
.end method

.method protected putDefaultParams(Lc8/RKd;)Lc8/RKd;
    .locals 4
    .param p1, "payload"    # Lc8/RKd;

    .prologue
    .line 140
    const-string/jumbo v0, "ei"

    invoke-virtual {p0}, Lc8/eLd;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "ts"

    invoke-virtual {p0}, Lc8/eLd;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p1
.end method
