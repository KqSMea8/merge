.class public Lc8/VZo;
.super Ljava/lang/Object;
.source "HomeToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuClick"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WZo;


# direct methods
.method private constructor <init>(Lc8/WZo;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lc8/VZo;->this$0:Lc8/WZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/WZo;Lc8/SZo;)V
    .locals 0
    .param p1, "x0"    # Lc8/WZo;
    .param p2, "x1"    # Lc8/SZo;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lc8/VZo;-><init>(Lc8/WZo;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    const/16 v2, 0x1f4

    invoke-static {v2}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lc8/VZo;->this$0:Lc8/WZo;

    invoke-static {v2}, Lc8/WZo;->access$500(Lc8/WZo;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lc8/IEn;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lc8/VZo;->this$0:Lc8/WZo;

    invoke-static {v2}, Lc8/WZo;->access$500(Lc8/WZo;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lc8/IEn;

    .line 266
    .local v0, "baseActivity":Lc8/IEn;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 267
    .local v1, "id":I
    invoke-virtual {v0, v1}, Lc8/IEn;->menuClick(I)Z

    goto :goto_0
.end method
