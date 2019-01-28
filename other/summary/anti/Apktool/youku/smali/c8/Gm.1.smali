.class public Lc8/Gm;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchExplorationStateChangeListenerWrapper"
.end annotation


# instance fields
.field final mListener:Ljava/lang/Object;

.field final mListenerBridge:Lc8/Fm;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc8/Fm;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listenerBridge"    # Lc8/Fm;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/Gm;->mListener:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lc8/Gm;->mListenerBridge:Lc8/Fm;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 54
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 56
    check-cast v0, Lc8/Gm;

    .line 58
    .local v0, "other":Lc8/Gm;
    iget-object v3, p0, Lc8/Gm;->mListener:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Lc8/Gm;->mListener:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lc8/Gm;->mListener:Ljava/lang/Object;

    iget-object v2, v0, Lc8/Gm;->mListener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Gm;->mListener:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Gm;->mListener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Gm;->mListenerBridge:Lc8/Fm;

    invoke-interface {v0, p1}, Lc8/Fm;->onTouchExplorationStateChanged(Z)V

    .line 64
    return-void
.end method
