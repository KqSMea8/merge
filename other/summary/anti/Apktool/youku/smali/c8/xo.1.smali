.class public Lc8/xo;
.super Landroid/support/v4/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lc8/wo;

    invoke-virtual {p0}, Lc8/xo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lc8/xo;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc8/wo;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 46
    instance-of v1, p1, Lc8/wo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lc8/wo;

    .line 49
    .local v0, "acd":Lc8/wo;
    packed-switch p2, :pswitch_data_0

    .line 63
    .end local v0    # "acd":Lc8/wo;
    :goto_0
    return-void

    .line 51
    .restart local v0    # "acd":Lc8/wo;
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 57
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/wo;->supportRequestWindowFeature(I)Z

    goto :goto_0

    .line 61
    .end local v0    # "acd":Lc8/wo;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
