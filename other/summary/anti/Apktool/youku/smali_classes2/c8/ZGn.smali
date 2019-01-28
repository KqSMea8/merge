.class public Lc8/ZGn;
.super Ljava/lang/Object;
.source "CustomToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aHn;->goneMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/aHn;


# direct methods
.method constructor <init>(Lc8/aHn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/aHn;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/ZGn;->this$0:Lc8/aHn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 90
    iget-object v0, p0, Lc8/ZGn;->this$0:Lc8/aHn;

    invoke-static {v0}, Lc8/aHn;->access$000(Lc8/aHn;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZGn;->this$0:Lc8/aHn;

    invoke-static {v0}, Lc8/aHn;->access$000(Lc8/aHn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lc8/ZGn;->this$0:Lc8/aHn;

    invoke-static {v0}, Lc8/aHn;->access$100(Lc8/aHn;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/ZGn;->this$0:Lc8/aHn;

    invoke-static {v0}, Lc8/aHn;->access$100(Lc8/aHn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_1
    return-void
.end method
