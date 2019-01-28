.class public Lc8/Zn;
.super Lc8/go;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Lc8/N;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yn;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lc8/Rn;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/go;-><init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V

    .line 34
    return-void
.end method


# virtual methods
.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 38
    new-instance v0, Lc8/Yn;

    invoke-direct {v0, p0, p1}, Lc8/Yn;-><init>(Lc8/Zn;Landroid/view/Window$Callback;)V

    return-object v0
.end method
