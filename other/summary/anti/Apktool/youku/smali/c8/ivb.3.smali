.class public Lc8/ivb;
.super Ljava/lang/Object;
.source "WXPrefetchModule.java"

# interfaces
.implements Lc8/avb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvb;->createPrefetchManagerIfNeeded()Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvb;


# direct methods
.method constructor <init>(Lc8/jvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvb;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/ivb;->this$0:Lc8/jvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lc8/jvb;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 83
    .local v0, "tempUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/MK;->getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    .line 86
    goto :goto_0
.end method
