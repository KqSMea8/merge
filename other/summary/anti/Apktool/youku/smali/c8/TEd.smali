.class public final Lc8/TEd;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UEd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lc8/XEd;

.field final synthetic b:Lc8/UEd;


# direct methods
.method constructor <init>(Lc8/UEd;Lc8/XEd;)V
    .locals 1

    iput-object p1, p0, Lc8/TEd;->b:Lc8/UEd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TEd;->a:Lc8/XEd;

    iput-object p2, p0, Lc8/TEd;->a:Lc8/XEd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc8/TEd;->b:Lc8/UEd;

    iget v1, v0, Lc8/UEd;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lc8/UEd;->b:I

    iget-object v0, p0, Lc8/TEd;->b:Lc8/UEd;

    iget-object v1, p0, Lc8/TEd;->a:Lc8/XEd;

    invoke-virtual {v0, v1}, Lc8/UEd;->b(Lc8/XEd;)V

    iget-object v0, p0, Lc8/TEd;->b:Lc8/UEd;

    iget v1, v0, Lc8/UEd;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc8/UEd;->b:I

    return-void
.end method
