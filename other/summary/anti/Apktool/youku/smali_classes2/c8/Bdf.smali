.class public final Lc8/Bdf;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field volatile active:Z

.field private final eventId:I

.field private final filter:Lc8/odf;

.field private final subscriber:Lc8/wdf;

.field private final weakSubscriber:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/wdf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILc8/wdf;Lc8/odf;Z)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "subscriber"    # Lc8/wdf;
    .param p3, "filter"    # Lc8/odf;
    .param p4, "useWeakReference"    # Z

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lc8/Bdf;->eventId:I

    .line 17
    iput-object p3, p0, Lc8/Bdf;->filter:Lc8/odf;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Bdf;->active:Z

    .line 20
    if-eqz p4, :cond_0

    .line 21
    iput-object v1, p0, Lc8/Bdf;->subscriber:Lc8/wdf;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Bdf;->weakSubscriber:Ljava/lang/ref/WeakReference;

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    iput-object p2, p0, Lc8/Bdf;->subscriber:Lc8/wdf;

    .line 25
    iput-object v1, p0, Lc8/Bdf;->weakSubscriber:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v2, p1, Lc8/Bdf;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Lc8/Bdf;

    .line 45
    .local v0, "otherSubscription":Lc8/Bdf;
    iget-object v2, p0, Lc8/Bdf;->subscriber:Lc8/wdf;

    iget-object v3, v0, Lc8/Bdf;->subscriber:Lc8/wdf;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lc8/Bdf;->eventId:I

    iget v3, v0, Lc8/Bdf;->eventId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 48
    .end local v0    # "otherSubscription":Lc8/Bdf;
    :cond_0
    return v1
.end method

.method public getFilter()Lc8/odf;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Bdf;->filter:Lc8/odf;

    return-object v0
.end method

.method public getSubscriber()Lc8/wdf;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Bdf;->subscriber:Lc8/wdf;

    .line 31
    .local v0, "subscriber":Lc8/wdf;
    if-nez v0, :cond_0

    .line 32
    iget-object v1, p0, Lc8/Bdf;->weakSubscriber:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Bdf;->weakSubscriber:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/wdf;

    move-object v0, v1

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Bdf;->subscriber:Lc8/wdf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
