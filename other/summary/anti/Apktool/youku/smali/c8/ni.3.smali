.class public abstract Lc8/ni;
.super Lc8/Qi;
.source "BaseFragmentActivityGingerbread.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Lc8/N;
    value = 0x9
.end annotation


# instance fields
.field public mStartedIntentSenderFromFragment:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/Qi;-><init>()V

    return-void
.end method

.method public static checkForValidRequestCode(I)V
    .locals 2
    .param p0, "requestCode"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 90
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lc8/ni;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lc8/ni;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lc8/Qi;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Lc8/ni;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3}, Lc8/Qi;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 63
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lc8/ni;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 78
    invoke-static {p2}, Lc8/ni;->checkForValidRequestCode(I)V

    .line 81
    :cond_0
    invoke-super/range {p0 .. p6}, Lc8/Qi;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 83
    return-void
.end method
