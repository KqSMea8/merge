.class public Lc8/mZo;
.super Ljava/lang/Object;
.source "EggDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oZo;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oZo;


# direct methods
.method constructor <init>(Lc8/oZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oZo;

    .prologue
    .line 138
    iput-object p1, p0, Lc8/mZo;->this$0:Lc8/oZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    new-instance v0, Lc8/hap;

    iget-object v1, p0, Lc8/mZo;->this$0:Lc8/oZo;

    invoke-virtual {v1}, Lc8/oZo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/hap;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "networkDialog":Lc8/hap;
    invoke-virtual {v0}, Lc8/hap;->show()V

    .line 143
    iget-object v1, p0, Lc8/mZo;->this$0:Lc8/oZo;

    invoke-virtual {v1}, Lc8/oZo;->dismiss()V

    .line 144
    return-void
.end method
