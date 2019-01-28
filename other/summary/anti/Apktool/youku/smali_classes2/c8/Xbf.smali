.class public final Lc8/Xbf;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ybf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SortedResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/Xbf;",
        ">;"
    }
.end annotation


# instance fields
.field private final info:Landroid/content/pm/ResolveInfo;

.field private same:I

.field final synthetic this$0:Lc8/Ybf;

.field private weight:I


# direct methods
.method public constructor <init>(Lc8/Ybf;Landroid/content/pm/ResolveInfo;II)V
    .locals 1
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "weight"    # I
    .param p4, "same"    # I

    .prologue
    const/4 v0, 0x0

    .line 599
    iput-object p1, p0, Lc8/Xbf;->this$0:Lc8/Ybf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput v0, p0, Lc8/Xbf;->weight:I

    .line 607
    iput v0, p0, Lc8/Xbf;->same:I

    .line 600
    iput-object p2, p0, Lc8/Xbf;->info:Landroid/content/pm/ResolveInfo;

    .line 601
    iput p3, p0, Lc8/Xbf;->weight:I

    .line 602
    iput p4, p0, Lc8/Xbf;->same:I

    .line 603
    return-void
.end method

.method static synthetic access$100(Lc8/Xbf;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "x0"    # Lc8/Xbf;

    .prologue
    .line 597
    iget-object v0, p0, Lc8/Xbf;->info:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lc8/Xbf;)I
    .locals 2
    .param p1, "other"    # Lc8/Xbf;

    .prologue
    .line 611
    if-ne p0, p1, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 624
    :goto_0
    return v0

    .line 615
    :cond_0
    iget v0, p1, Lc8/Xbf;->weight:I

    iget v1, p0, Lc8/Xbf;->weight:I

    if-eq v0, v1, :cond_1

    .line 616
    iget v0, p1, Lc8/Xbf;->weight:I

    iget v1, p0, Lc8/Xbf;->weight:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 618
    :cond_1
    iget v0, p1, Lc8/Xbf;->same:I

    iget v1, p0, Lc8/Xbf;->same:I

    if-eq v0, v1, :cond_2

    .line 619
    iget v0, p1, Lc8/Xbf;->same:I

    iget v1, p0, Lc8/Xbf;->same:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 621
    :cond_2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 622
    const/4 v0, -0x1

    goto :goto_0

    .line 624
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 597
    check-cast p1, Lc8/Xbf;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Xbf;->compareTo(Lc8/Xbf;)I

    move-result v0

    return v0
.end method
