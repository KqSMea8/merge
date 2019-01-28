.class public Lc8/xyb;
.super Ljava/lang/Object;
.source "BlurTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yyb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yyb;


# direct methods
.method constructor <init>(Lc8/yyb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yyb;

    .prologue
    .line 316
    iput-object p1, p0, Lc8/xyb;->this$0:Lc8/yyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lc8/xyb;->this$0:Lc8/yyb;

    iget-object v0, v0, Lc8/yyb;->val$listener:Lc8/zyb;

    iget-object v1, p0, Lc8/xyb;->this$0:Lc8/yyb;

    iget-object v1, v1, Lc8/yyb;->val$originalImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc8/zyb;->onBlurComplete(Landroid/graphics/Bitmap;)V

    .line 320
    return-void
.end method
