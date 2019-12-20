BEGIN{
    dropped = 0;
}
{
    if($1 == "d")
	dropped = dropped + 1;
}
END{
    printf("no of packets dropped = %d\n",dropped);
