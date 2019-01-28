.class public Lc8/Aaf;
.super Ljava/lang/Object;
.source "ResParser.java"

# interfaces
.implements Lc8/yaf;


# static fields
.field private static final TAG:Ljava/lang/String; = "Home.ResParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openXmlResourceParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .param p1, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .prologue
    .line 18
    invoke-static {p1}, Lc8/Paf;->getLayoutParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method
