.class public Lc8/Jnb;
.super Ljava/lang/Object;
.source "ALPAplus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Knb;->send()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Knb;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Knb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lc8/Jnb;->this$0:Lc8/Knb;

    iput-object p2, p0, Lc8/Jnb;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Jnb;->val$url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Wnb;->get(Ljava/lang/String;Ljava/util/Map;)Lc8/Xnb;

    .line 63
    return-void
.end method
