.class public Lc8/dYo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iYo;->refreshComplete(Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iYo;


# direct methods
.method constructor <init>(Lc8/iYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iYo;

    .prologue
    .line 237
    iput-object p1, p0, Lc8/dYo;->this$0:Lc8/iYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lc8/dYo;->this$0:Lc8/iYo;

    invoke-virtual {v0}, Lc8/iYo;->reset()V

    .line 240
    return-void
.end method
