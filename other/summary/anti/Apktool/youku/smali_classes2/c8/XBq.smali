.class public final Lc8/XBq;
.super Ljava/lang/Object;
.source "SerialSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field final isUnsubscribed:Z

.field final subscription:Lc8/Pmq;


# direct methods
.method constructor <init>(ZLc8/Pmq;)V
    .locals 0
    .param p1, "u"    # Z
    .param p2, "s"    # Lc8/Pmq;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lc8/XBq;->isUnsubscribed:Z

    .line 35
    iput-object p2, p0, Lc8/XBq;->subscription:Lc8/Pmq;

    .line 36
    return-void
.end method


# virtual methods
.method set(Lc8/Pmq;)Lc8/XBq;
    .locals 2
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 43
    new-instance v0, Lc8/XBq;

    iget-boolean v1, p0, Lc8/XBq;->isUnsubscribed:Z

    invoke-direct {v0, v1, p1}, Lc8/XBq;-><init>(ZLc8/Pmq;)V

    return-object v0
.end method

.method unsubscribe()Lc8/XBq;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lc8/XBq;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/XBq;->subscription:Lc8/Pmq;

    invoke-direct {v0, v1, v2}, Lc8/XBq;-><init>(ZLc8/Pmq;)V

    return-object v0
.end method
