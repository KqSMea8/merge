.class public Lc8/Ro;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lc8/ix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wo;


# direct methods
.method constructor <init>(Lc8/Wo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Wo;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/Ro;->this$0:Lc8/Wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Lc8/Ro;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
