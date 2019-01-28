.class public Lcom/youku/vo/Initial$P2p;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "P2p"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2af938b3d9bddcf3L


# instance fields
.field public cpu_limit:I

.field public memory_limit:I

.field public need_sd_card:I

.field final synthetic this$0:Lcom/youku/vo/Initial;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/vo/Initial;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/vo/Initial$P2p;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/Initial$P2p;->need_sd_card:I

    return-void
.end method
