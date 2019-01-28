.class public Lc8/Ikk;
.super Ljava/lang/Object;
.source "SideslipContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CornerArrowJump"
.end annotation


# instance fields
.field public firstEpisodeVid:Ljava/lang/String;

.field final synthetic this$0:Lc8/Jkk;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public video:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Jkk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jkk;

    .prologue
    .line 19
    iput-object p1, p0, Lc8/Ikk;->this$0:Lc8/Jkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
