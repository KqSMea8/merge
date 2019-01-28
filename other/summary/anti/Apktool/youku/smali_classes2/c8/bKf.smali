.class public final Lc8/bKf;
.super Landroid/support/v4/util/ArrayMap;
.source "MsgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dKf;->commitMonitor(Lc8/RJf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/ArrayMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lc8/RJf;


# direct methods
.method constructor <init>(Lc8/RJf;)V
    .locals 4

    .prologue
    .line 40
    iput-object p1, p0, Lc8/bKf;->val$p:Lc8/RJf;

    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 42
    const-string/jumbo v0, "MKT_MEASURE_FLOW"

    iget-object v1, p0, Lc8/bKf;->val$p:Lc8/RJf;

    iget-wide v2, v1, Lc8/RJf;->alongTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/bKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "MKT_MEASURE_NET"

    iget-object v1, p0, Lc8/bKf;->val$p:Lc8/RJf;

    iget-wide v2, v1, Lc8/RJf;->netTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/bKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "MKT_MEASURE_PACK"

    iget-object v1, p0, Lc8/bKf;->val$p:Lc8/RJf;

    iget-wide v2, v1, Lc8/RJf;->packTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/bKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
