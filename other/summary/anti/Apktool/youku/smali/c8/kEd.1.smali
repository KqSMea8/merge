.class public final Lc8/kEd;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mEd;->a(Lc8/jEd;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lc8/jEd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/jEd;)V
    .locals 0

    iput-object p1, p0, Lc8/kEd;->a:Landroid/content/Context;

    iput-object p2, p0, Lc8/kEd;->b:Lc8/jEd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc8/kEd;->a:Landroid/content/Context;

    sget-object v1, Lc8/iGd;->g:Ljava/lang/String;

    iget-object v2, p0, Lc8/kEd;->b:Lc8/jEd;

    invoke-virtual {v2}, Lc8/jEd;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/nEd;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
