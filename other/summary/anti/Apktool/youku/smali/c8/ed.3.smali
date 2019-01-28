.class public Lc8/ed;
.super Lc8/xo;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/xo;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Lc8/dd;

    invoke-virtual {p0}, Lc8/ed;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lc8/ed;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc8/dd;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
