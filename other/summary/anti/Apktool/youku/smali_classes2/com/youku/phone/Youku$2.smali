.class public Lcom/youku/phone/Youku$2;
.super Ljava/util/ArrayList;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method public constructor <init>(Lc8/KLj;)V
    .locals 1
    .param p1, "this$0"    # Lc8/KLj;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lcom/youku/phone/Youku$2;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const-string/jumbo v0, "iyes.youku.com"

    invoke-virtual {p0, v0}, Lcom/youku/phone/Youku$2;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method
