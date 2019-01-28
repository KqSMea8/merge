.class public final Lc8/TBq;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UBq;
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lc8/TBq;->isUnsubscribed:Z

    .line 37
    iput-object p2, p0, Lc8/TBq;->subscription:Lc8/Pmq;

    .line 38
    return-void
.end method


# virtual methods
.method set(Lc8/Pmq;)Lc8/TBq;
    .locals 2
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 45
    new-instance v0, Lc8/TBq;

    iget-boolean v1, p0, Lc8/TBq;->isUnsubscribed:Z

    invoke-direct {v0, v1, p1}, Lc8/TBq;-><init>(ZLc8/Pmq;)V

    return-object v0
.end method

.method unsubscribe()Lc8/TBq;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lc8/TBq;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/TBq;->subscription:Lc8/Pmq;

    invoke-direct {v0, v1, v2}, Lc8/TBq;-><init>(ZLc8/Pmq;)V

    return-object v0
.end method
