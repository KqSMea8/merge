.class public final Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayer/utils/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogDO"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final content:Ljava/lang/String;

.field final lineNumber:Ljava/lang/String;

.field final msgLevel:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field final source:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "msgLevel"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "lineNumber"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->tag:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->content:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->msgLevel:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 30
    iput-object p4, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->source:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->lineNumber:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toSpannableString()Landroid/text/Spannable;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v0, "xxx":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->msgLevel:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    iget v2, v2, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->color:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string/jumbo v0, "%s %s: %s\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->msgLevel:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->content:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
