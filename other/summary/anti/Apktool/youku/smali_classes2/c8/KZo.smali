.class public Lc8/KZo;
.super Ljava/lang/Object;
.source "HintRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NZo;->refreshComplete(Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/NZo;


# direct methods
.method constructor <init>(Lc8/NZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/NZo;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/KZo;->this$0:Lc8/NZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/KZo;->this$0:Lc8/NZo;

    invoke-virtual {v0}, Lc8/NZo;->reset()V

    .line 86
    return-void
.end method
