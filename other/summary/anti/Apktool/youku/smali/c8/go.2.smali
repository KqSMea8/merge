.class public Lc8/go;
.super Lc8/eo;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lc8/N;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fo;
    }
.end annotation


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lc8/Rn;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/eo;-><init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V

    .line 35
    const-string/jumbo v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lc8/go;->mUiModeManager:Landroid/app/UiModeManager;

    .line 36
    return-void
.end method


# virtual methods
.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 48
    if-nez p1, :cond_0

    iget-object v0, p0, Lc8/go;->mUiModeManager:Landroid/app/UiModeManager;

    .line 49
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, -0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lc8/eo;->mapNightMode(I)I

    move-result v0

    goto :goto_0
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 42
    new-instance v0, Lc8/fo;

    invoke-direct {v0, p0, p1}, Lc8/fo;-><init>(Lc8/go;Landroid/view/Window$Callback;)V

    return-object v0
.end method
