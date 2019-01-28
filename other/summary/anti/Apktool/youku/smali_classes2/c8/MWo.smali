.class public Lc8/MWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Href"
.end annotation


# instance fields
.field mHref:Ljava/lang/String;

.field mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p1, p0, Lc8/MWo;->mHref:Ljava/lang/String;

    .line 771
    iput-object p2, p0, Lc8/MWo;->mId:Ljava/lang/String;

    .line 772
    return-void
.end method
