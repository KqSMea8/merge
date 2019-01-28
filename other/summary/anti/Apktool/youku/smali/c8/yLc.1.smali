.class public final Lc8/yLc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zLc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lc8/yLc;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lc8/yLc;->b:I

    iget-object v1, p0, Lc8/yLc;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lc8/yLc;)Z
    .locals 2

    iget-object v0, p0, Lc8/yLc;->a:Ljava/lang/String;

    iget v1, p0, Lc8/yLc;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
