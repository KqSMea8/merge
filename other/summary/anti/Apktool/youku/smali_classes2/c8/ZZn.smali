.class public Lc8/ZZn;
.super Ljava/lang/Object;
.source "Yarrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/us/baseframework/security/Yarrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntropySource"
.end annotation


# instance fields
.field public lastDelta:I

.field public lastDelta2:I

.field public lastVal:J

.field final synthetic this$0:Lcom/youku/us/baseframework/security/Yarrow;


# direct methods
.method public constructor <init>(Lcom/youku/us/baseframework/security/Yarrow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/us/baseframework/security/Yarrow;

    .prologue
    .line 354
    iput-object p1, p0, Lc8/ZZn;->this$0:Lcom/youku/us/baseframework/security/Yarrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method
