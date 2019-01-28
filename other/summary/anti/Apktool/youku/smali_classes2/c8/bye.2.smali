.class public Lc8/bye;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mye;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mye;


# direct methods
.method constructor <init>(Lc8/mye;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mye;

    .prologue
    .line 166
    iput-object p1, p0, Lc8/bye;->this$0:Lc8/mye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    .line 170
    iget-object v2, p0, Lc8/bye;->this$0:Lc8/mye;

    invoke-static {v2, v1}, Lc8/mye;->access$000(Lc8/mye;I)Ljava/io/File;

    move-result-object v0

    .line 172
    .local v0, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 176
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method
