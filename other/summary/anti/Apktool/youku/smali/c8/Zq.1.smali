.class public Lc8/Zq;
.super Lc8/Dq;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnMenuItemClickListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Dq",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ar;


# direct methods
.method constructor <init>(Lc8/ar;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p2, "object"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 320
    iput-object p1, p0, Lc8/Zq;->this$0:Lc8/ar;

    .line 321
    invoke-direct {p0, p2}, Lc8/Dq;-><init>(Ljava/lang/Object;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 326
    iget-object v0, p0, Lc8/Zq;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lc8/Zq;->this$0:Lc8/ar;

    invoke-virtual {v1, p1}, Lc8/ar;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
