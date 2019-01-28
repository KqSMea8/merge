.class public Lc8/znf;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private isVisible:Z

.field private started:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/znf;->isVisible:Z

    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 50
    iget-boolean v0, p0, Lc8/znf;->isVisible:Z

    if-ne v0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iput-boolean p1, p0, Lc8/znf;->isVisible:Z

    .line 59
    if-eqz p1, :cond_0

    .line 60
    sget-object v0, Lc8/gpf;->instance:Lc8/gpf;

    new-instance v1, Lc8/ynf;

    invoke-direct {v1, p0}, Lc8/ynf;-><init>(Lc8/znf;)V

    invoke-virtual {v0, v1}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    iget v0, p0, Lc8/znf;->started:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/znf;->started:I

    .line 39
    iget v0, p0, Lc8/znf;->started:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lc8/znf;->setVisible(Z)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget v0, p0, Lc8/znf;->started:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/znf;->started:I

    .line 46
    iget v0, p0, Lc8/znf;->started:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lc8/znf;->setVisible(Z)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
