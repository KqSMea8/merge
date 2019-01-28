.class public Lc8/Nco;
.super Ljava/lang/Object;
.source "UrlQueryExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Kco;,
        Lc8/Mco;,
        Lc8/Lco;
    }
.end annotation


# static fields
.field private static final S_ALL_BUT_NUL_LEGAL:Lc8/Mco;

.field private static final S_ALL_BUT_WHITESPACE_LEGAL:Lc8/Mco;

.field private static final S_ALL_ILLEGAL:Lc8/Mco;

.field private static final S_AMP_LEGAL:Lc8/Mco;

.field private static final S_URL_AND_SPACE_LEGAL:Lc8/Mco;

.field private static final S_U_R_L_LEGAL:Lc8/Mco;

.field private static final sAllButNulAndAngleBracketsLegal:Lc8/Mco;

.field private static final sAmpAndSpaceLegal:Lc8/Mco;

.field private static final sSpaceLegal:Lc8/Mco;


# instance fields
.field private mAllowUnregisteredParamaters:Z

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Lco;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferFirstRepeatedParameter:Z

.field private final mSanitizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Mco;",
            ">;"
        }
    .end annotation
.end field

.field private mUnregisteredParameterValueSanitizer:Lc8/Mco;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lc8/Kco;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_ALL_ILLEGAL:Lc8/Mco;

    .line 466
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x5ff

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_ALL_BUT_NUL_LEGAL:Lc8/Mco;

    .line 470
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x5fc

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_ALL_BUT_WHITESPACE_LEGAL:Lc8/Mco;

    .line 474
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_U_R_L_LEGAL:Lc8/Mco;

    .line 478
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_URL_AND_SPACE_LEGAL:Lc8/Mco;

    .line 482
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->S_AMP_LEGAL:Lc8/Mco;

    .line 486
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->sAmpAndSpaceLegal:Lc8/Mco;

    .line 490
    new-instance v0, Lc8/Kco;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->sSpaceLegal:Lc8/Mco;

    .line 494
    new-instance v0, Lc8/Kco;

    const/16 v1, 0x59f

    invoke-direct {v0, v1}, Lc8/Kco;-><init>(I)V

    sput-object v0, Lc8/Nco;->sAllButNulAndAngleBracketsLegal:Lc8/Mco;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mEntriesList:Ljava/util/ArrayList;

    .line 91
    invoke-static {}, Lc8/Nco;->getAllIllegal()Lc8/Mco;

    move-result-object v0

    iput-object v0, p0, Lc8/Nco;->mUnregisteredParameterValueSanitizer:Lc8/Mco;

    .line 603
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Nco;->mEntriesList:Ljava/util/ArrayList;

    .line 91
    invoke-static {}, Lc8/Nco;->getAllIllegal()Lc8/Mco;

    move-result-object v0

    iput-object v0, p0, Lc8/Nco;->mUnregisteredParameterValueSanitizer:Lc8/Mco;

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Nco;->setAllowUnregisteredParamaters(Z)V

    .line 627
    invoke-virtual {p0, p1}, Lc8/Nco;->parseUrl(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public static final getAllButNulAndAngleBracketsLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lc8/Nco;->sAllButNulAndAngleBracketsLegal:Lc8/Mco;

    return-object v0
.end method

.method public static final getAllButNulLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lc8/Nco;->S_ALL_BUT_NUL_LEGAL:Lc8/Mco;

    return-object v0
.end method

.method public static final getAllButWhitespaceLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lc8/Nco;->S_ALL_BUT_WHITESPACE_LEGAL:Lc8/Mco;

    return-object v0
.end method

.method public static final getAllIllegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lc8/Nco;->S_ALL_ILLEGAL:Lc8/Mco;

    return-object v0
.end method

.method public static final getAmpAndSpaceLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lc8/Nco;->sAmpAndSpaceLegal:Lc8/Mco;

    return-object v0
.end method

.method public static final getAmpLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lc8/Nco;->S_AMP_LEGAL:Lc8/Mco;

    return-object v0
.end method

.method public static final getSpaceLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lc8/Nco;->sSpaceLegal:Lc8/Mco;

    return-object v0
.end method

.method public static final getUrlAndSpaceLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lc8/Nco;->S_URL_AND_SPACE_LEGAL:Lc8/Mco;

    return-object v0
.end method

.method public static final getUrlLegal()Lc8/Mco;
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lc8/Nco;->S_U_R_L_LEGAL:Lc8/Mco;

    return-object v0
.end method


# virtual methods
.method protected addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v0, p0, Lc8/Nco;->mEntriesList:Ljava/util/ArrayList;

    new-instance v1, Lc8/Lco;

    invoke-direct {v1, p0, p1, p2}, Lc8/Lco;-><init>(Lc8/Nco;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-boolean v0, p0, Lc8/Nco;->mPreferFirstRepeatedParameter:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 968
    iget-object v0, p0, Lc8/Nco;->mEntriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 969
    return-void
.end method

.method protected decodeHexDigit(C)I
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 951
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 952
    add-int/lit8 v0, p1, -0x30

    .line 958
    :goto_0
    return v0

    .line 953
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 954
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 955
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 956
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 958
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAllowUnregisteredParamaters()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lc8/Nco;->mAllowUnregisteredParamaters:Z

    return v0
.end method

.method public getEffectiveValueSanitizer(Ljava/lang/String;)Lc8/Mco;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lc8/Nco;->getValueSanitizer(Ljava/lang/String;)Lc8/Mco;

    move-result-object v0

    .line 880
    .local v0, "sanitizer":Lc8/Mco;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lc8/Nco;->mAllowUnregisteredParamaters:Z

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {p0}, Lc8/Nco;->getUnregisteredParameterValueSanitizer()Lc8/Mco;

    move-result-object v0

    .line 883
    :cond_0
    return-object v0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Lco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lc8/Nco;->mEntriesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParameterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferFirstRepeatedParameter()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lc8/Nco;->mPreferFirstRepeatedParameter:Z

    return v0
.end method

.method public getUnregisteredParameterValueSanitizer()Lc8/Mco;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lc8/Nco;->mUnregisteredParameterValueSanitizer:Lc8/Mco;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueSanitizer(Ljava/lang/String;)Lc8/Mco;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 866
    iget-object v0, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mco;

    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lc8/Nco;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isHexDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Lc8/Nco;->decodeHexDigit(C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lc8/Nco;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "unescapedParameter":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/Nco;->getEffectiveValueSanitizer(Ljava/lang/String;)Lc8/Mco;

    move-result-object v4

    .line 826
    .local v4, "valueSanitizer":Lc8/Mco;
    if-nez v4, :cond_0

    .line 837
    :goto_0
    return-void

    .line 829
    :cond_0
    const/4 v3, 0x0

    .line 831
    .local v3, "unescapedValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {p2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc8/Nco;->unescape(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 835
    :goto_1
    invoke-interface {v4, v3}, Lc8/Mco;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "sanitizedValue":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lc8/Nco;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 832
    .end local v1    # "sanitizedValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public parseQuery(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-virtual {p0}, Lc8/Nco;->clear()V

    .line 660
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "attributeValuePair":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 664
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 665
    .local v0, "assignmentIndex":I
    if-gez v0, :cond_1

    .line 667
    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v3}, Lc8/Nco;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 670
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-virtual {p0, v3, v4}, Lc8/Nco;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v0    # "assignmentIndex":I
    .end local v1    # "attributeValuePair":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public parseUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 639
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 641
    .local v1, "queryIndex":I
    if-ltz v1, :cond_0

    .line 642
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lc8/Nco;->parseQuery(Ljava/lang/String;)V

    .line 647
    return-void

    .line 644
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .restart local v0    # "query":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerParameter(Ljava/lang/String;Lc8/Mco;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "valueSanitizer"    # Lc8/Mco;

    .prologue
    .line 734
    if-nez p2, :cond_0

    .line 735
    iget-object v0, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_0
    iget-object v0, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    return-void
.end method

.method public registerParameters([Ljava/lang/String;Lc8/Mco;)V
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/String;
    .param p2, "valueSanitizer"    # Lc8/Mco;

    .prologue
    .line 749
    array-length v1, p1

    .line 750
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 751
    iget-object v2, p0, Lc8/Nco;->mSanitizers:Ljava/util/HashMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method

.method public setAllowUnregisteredParamaters(Z)V
    .locals 0
    .param p1, "allowUnregisteredParamaters"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lc8/Nco;->mAllowUnregisteredParamaters:Z

    .line 767
    return-void
.end method

.method public setPreferFirstRepeatedParameter(Z)V
    .locals 0
    .param p1, "preferFirstRepeatedParameter"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, Lc8/Nco;->mPreferFirstRepeatedParameter:Z

    .line 797
    return-void
.end method

.method public setUnregisteredParameterValueSanitizer(Lc8/Mco;)V
    .locals 0
    .param p1, "sanitizer"    # Lc8/Mco;

    .prologue
    .line 456
    iput-object p1, p0, Lc8/Nco;->mUnregisteredParameterValueSanitizer:Lc8/Mco;

    .line 457
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2b

    const/16 v9, 0x25

    .line 901
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 902
    .local v3, "firstEscape":I
    if-gez v3, :cond_0

    .line 903
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 904
    if-gez v3, :cond_0

    .line 927
    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 909
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 911
    .local v5, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 912
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 914
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 915
    .local v0, "c":C
    if-ne v0, v10, :cond_2

    .line 916
    const/16 v0, 0x20

    .line 925
    :cond_1
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 917
    :cond_2
    if-ne v0, v9, :cond_1

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v5, :cond_1

    .line 918
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 919
    .local v1, "c1":C
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 920
    .local v2, "c2":C
    invoke-virtual {p0, v1}, Lc8/Nco;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Lc8/Nco;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 921
    invoke-virtual {p0, v1}, Lc8/Nco;->decodeHexDigit(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v2}, Lc8/Nco;->decodeHexDigit(C)I

    move-result v8

    add-int/2addr v7, v8

    int-to-char v0, v7

    .line 922
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 927
    .end local v0    # "c":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
