.class public Lc8/MF;
.super Ljava/lang/Object;
.source "WVMonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorRule"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public msgPattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lc8/OF;

.field public url:Ljava/lang/String;

.field public urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lc8/OF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-object p1, p0, Lc8/MF;->this$0:Lc8/OF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/MF;->url:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lc8/MF;->urlPattern:Ljava/util/regex/Pattern;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/MF;->msg:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lc8/MF;->msgPattern:Ljava/util/regex/Pattern;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/MF;->code:Ljava/lang/String;

    return-void
.end method
