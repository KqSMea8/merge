.class public Lc8/uUc;
.super Lc8/yUc;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yUc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yUc;-><init>(Lc8/tUc;)V

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lc8/tUc;)V
    .locals 0
    .param p1, "x0"    # Lc8/tUc;

    .prologue
    .line 510
    invoke-direct {p0}, Lc8/uUc;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 531
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 539
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 535
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 543
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 547
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 551
    return-void
.end method

.method public start()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method
