.class public Lc8/nOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tOf;


# direct methods
.method constructor <init>(Lc8/tOf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tOf;

    .prologue
    .line 294
    iput-object p1, p0, Lc8/nOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lc8/nOf;->this$0:Lc8/tOf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/tOf;->access$400(Lc8/tOf;Z)Z

    .line 298
    return-void
.end method
