.class public Lc8/gD;
.super Ljava/lang/Object;
.source "WVUCWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oD;->openFileChooser(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oD;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lc8/oD;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lc8/gD;->this$0:Lc8/oD;

    iput-object p2, p0, Lc8/gD;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lc8/gD;->this$0:Lc8/oD;

    iget-object v1, p0, Lc8/gD;->val$callback:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1}, Lc8/oD;->access$001(Lc8/oD;Landroid/webkit/ValueCallback;)V

    .line 56
    return-void
.end method
