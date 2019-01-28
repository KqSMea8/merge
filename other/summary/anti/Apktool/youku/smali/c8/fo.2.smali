.class public Lc8/fo;
.super Lc8/bo;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/go;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCompatWindowCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/go;


# direct methods
.method constructor <init>(Lc8/go;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lc8/go;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/fo;->this$0:Lc8/go;

    .line 59
    invoke-direct {p0, p1, p2}, Lc8/bo;-><init>(Lc8/eo;Landroid/view/Window$Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lc8/fo;->this$0:Lc8/go;

    invoke-virtual {v0}, Lc8/go;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    packed-switch p2, :pswitch_data_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/bo;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-virtual {p0, p1}, Lc8/fo;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
