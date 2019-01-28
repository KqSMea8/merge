.class public final Lc8/RJd;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$analyticsListener:Lc8/MId;

.field final synthetic val$bytesReceived:J

.field final synthetic val$bytesSent:J

.field final synthetic val$isFromCache:Z

.field final synthetic val$timeTakenInMillis:J


# direct methods
.method constructor <init>(Lc8/MId;JJJZ)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lc8/RJd;->val$analyticsListener:Lc8/MId;

    iput-wide p2, p0, Lc8/RJd;->val$timeTakenInMillis:J

    iput-wide p4, p0, Lc8/RJd;->val$bytesSent:J

    iput-wide p6, p0, Lc8/RJd;->val$bytesReceived:J

    iput-boolean p8, p0, Lc8/RJd;->val$isFromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 206
    iget-object v0, p0, Lc8/RJd;->val$analyticsListener:Lc8/MId;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lc8/RJd;->val$analyticsListener:Lc8/MId;

    iget-wide v2, p0, Lc8/RJd;->val$timeTakenInMillis:J

    iget-wide v4, p0, Lc8/RJd;->val$bytesSent:J

    iget-wide v6, p0, Lc8/RJd;->val$bytesReceived:J

    iget-boolean v8, p0, Lc8/RJd;->val$isFromCache:Z

    invoke-interface/range {v1 .. v8}, Lc8/MId;->onReceived(JJJZ)V

    .line 210
    :cond_0
    return-void
.end method
