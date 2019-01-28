.class public Lc8/fjb;
.super Ljava/lang/Object;
.source "QrLoginActivity.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gjb;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/gjb;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lc8/gjb;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lc8/gjb;

    .prologue
    .line 166
    iput-object p1, p0, Lc8/fjb;->this$1:Lc8/gjb;

    iput-object p2, p0, Lc8/fjb;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 1
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 169
    iget-object v0, p0, Lc8/fjb;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 170
    return-void
.end method
