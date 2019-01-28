.class public Lc8/Uq;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vq;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vq;


# direct methods
.method constructor <init>(Lc8/Vq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Vq;

    .prologue
    .line 666
    iput-object p1, p0, Lc8/Uq;->this$0:Lc8/Vq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lc8/Uq;->this$0:Lc8/Vq;

    iget-object v0, v0, Lc8/Vq;->mMenu:Lc8/Rq;

    iget-object v1, p0, Lc8/Uq;->this$0:Lc8/Vq;

    invoke-virtual {v0, v1}, Lc8/Rq;->onItemVisibleChanged(Lc8/Vq;)V

    .line 670
    return-void
.end method
