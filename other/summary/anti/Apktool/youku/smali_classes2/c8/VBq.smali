.class public final Lc8/VBq;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field final children:I

.field final isUnsubscribed:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "u"    # Z
    .param p2, "c"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lc8/VBq;->isUnsubscribed:Z

    .line 38
    iput p2, p0, Lc8/VBq;->children:I

    .line 39
    return-void
.end method


# virtual methods
.method addChild()Lc8/VBq;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lc8/VBq;

    iget-boolean v1, p0, Lc8/VBq;->isUnsubscribed:Z

    iget v2, p0, Lc8/VBq;->children:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/VBq;-><init>(ZI)V

    return-object v0
.end method

.method removeChild()Lc8/VBq;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lc8/VBq;

    iget-boolean v1, p0, Lc8/VBq;->isUnsubscribed:Z

    iget v2, p0, Lc8/VBq;->children:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lc8/VBq;-><init>(ZI)V

    return-object v0
.end method

.method unsubscribe()Lc8/VBq;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lc8/VBq;

    const/4 v1, 0x1

    iget v2, p0, Lc8/VBq;->children:I

    invoke-direct {v0, v1, v2}, Lc8/VBq;-><init>(ZI)V

    return-object v0
.end method
