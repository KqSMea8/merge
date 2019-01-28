.class public Lc8/EEn;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lc8/kq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IEn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IEn;


# direct methods
.method constructor <init>(Lc8/IEn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IEn;

    .prologue
    .line 289
    iput-object p1, p0, Lc8/EEn;->this$0:Lc8/IEn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lc8/lq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Lc8/lq;
    .param p2, "arg1"    # Landroid/view/MenuItem;

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Lc8/lq;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lc8/lq;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 316
    iget-object v0, p0, Lc8/EEn;->this$0:Lc8/IEn;

    invoke-virtual {v0, p1}, Lc8/IEn;->onDeleteTitleCreate(Lc8/lq;)V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lc8/lq;)V
    .locals 1
    .param p1, "arg0"    # Lc8/lq;

    .prologue
    .line 299
    iget-object v0, p0, Lc8/EEn;->this$0:Lc8/IEn;

    invoke-virtual {v0}, Lc8/IEn;->onDestroyActionEvent()V

    .line 300
    return-void
.end method

.method public onPrepareActionMode(Lc8/lq;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "arg0"    # Lc8/lq;
    .param p2, "arg1"    # Landroid/view/Menu;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method
