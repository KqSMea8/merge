.class public Lc8/ybg;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zbg;->onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zbg;

.field final synthetic val$comp:Lc8/Dbg;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/zbg;Landroid/widget/ImageView;Lc8/Dbg;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc8/ybg;->this$0:Lc8/zbg;

    iput-object p2, p0, Lc8/ybg;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lc8/ybg;->val$comp:Lc8/Dbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lc8/ybg;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lc8/ybg;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lc8/ybg;->val$comp:Lc8/Dbg;

    invoke-virtual {v0}, Lc8/Dbg;->loadContent()V

    .line 108
    return-void
.end method
