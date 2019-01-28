.class public Lc8/KZe;
.super Lc8/nn;
.source "ActionBarActivityCompat.java"

# interfaces
.implements Lc8/LZe;


# static fields
.field private static final COMPAT:Z


# instance fields
.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/KZe;->COMPAT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/nn;-><init>()V

    return-void
.end method

.method private getApplicationCompat()Lc8/PZe;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lc8/KZe;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lc8/PZe;

    return-object v0
.end method


# virtual methods
.method public isDestroyed()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lc8/KZe;->mDestroyed:Z

    .line 27
    :goto_0
    return v0

    .line 25
    :cond_0
    :try_start_0
    invoke-super {p0}, Lc8/nn;->isDestroyed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lc8/KZe;->mDestroyed:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Lc8/nn;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/PZe;->dispatchActivityCreatedCompat(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KZe;->mDestroyed:Z

    .line 63
    invoke-super {p0}, Lc8/nn;->onDestroy()V

    .line 64
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/PZe;->dispatchActivityDestroyedCompat(Landroid/app/Activity;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lc8/nn;->onPause()V

    .line 48
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/PZe;->dispatchActivityPausedCompat(Landroid/app/Activity;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lc8/nn;->onResume()V

    .line 43
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/PZe;->dispatchActivityResumedCompat(Landroid/app/Activity;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lc8/nn;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/PZe;->dispatchActivitySaveInstanceStateCompat(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lc8/nn;->onStart()V

    .line 38
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/PZe;->dispatchActivityStartedCompat(Landroid/app/Activity;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lc8/nn;->onStop()V

    .line 53
    sget-boolean v0, Lc8/KZe;->COMPAT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/KZe;->getApplicationCompat()Lc8/PZe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/PZe;->dispatchActivityStoppedCompat(Landroid/app/Activity;)V

    .line 54
    :cond_0
    return-void
.end method
